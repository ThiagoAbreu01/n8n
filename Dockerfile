# Base oficial do n8n
FROM n8nio/n8n:latest

# Variáveis de ambiente com valores default
# Esses valores serão sobrescritos pelo Render pelo painel de ENV
ENV WEBHOOK_URL="http://placeholder-webhook-url"
ENV N8N_HOST="0.0.0.0"
ENV GENERIC_TIMEZONE="America/Sao_Paulo"
ENV N8N_LOG_LEVEL="debug"
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE="true"

# Volume persistente
VOLUME ["/home/node/.n8n"]

# Porta usada pelo n8n
EXPOSE 5678

# Comando padrão
CMD ["n8n"]
