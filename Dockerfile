# Dockerfile-n8n
FROM n8nio/n8n:latest

# Variáveis de ambiente (substitua pelo painel do Render)
ENV WEBHOOK_URL=$WEBHOOK_URL       # URL completa do Waha, ex: https://waha.onrender.com/webhook/webhook
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=America/Sao_Paulo
ENV N8N_LOG_LEVEL=debug
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true

# Volume persistente para dados do n8n
VOLUME ["/home/node/.n8n"]

# Porta usada pelo n8n
EXPOSE 5678

# Comando padrão
CMD ["n8n"]
