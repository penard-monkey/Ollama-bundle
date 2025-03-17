FROM ollama/ollama

ARG MODEL_NAME=gemma3:12b

ENV OLLAMA_HOST 0.0.0.0:8000
ENV OLLAMA_KEEP_ALIVE -1
ENV OLLAMA_DEBUG 1

RUN ollama serve & sleep 15 && ollama pull $MODEL_NAME 

ENTRYPOINT ["ollama", "serve"]