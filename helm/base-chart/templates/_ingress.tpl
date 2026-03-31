{{- define "base.ingress" }}
{{- if .Values.ingress.enabled }}

apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: {{ .Release.Name }}-ingress
spec:
  ingressClassName: nginx
  rules:
    - host: {{ .Values.ingress.host }}
      http:
        paths:

          - path: /
            pathType: Prefix
            backend:
              service:
                name: {{ .Values.monolith.serviceName }}
                port:
                  number: 80

          - path: /user
            pathType: Prefix
            backend:
              service:
                name: {{ .Values.user.serviceName }}
                port:
                  number: 80

          - path: /order
            pathType: Prefix
            backend:
              service:
                name: {{ .Values.order.serviceName }}
                port:
                  number: 80

          - path: /payment
            pathType: Prefix
            backend:
              service:
                name: {{ .Values.payment.serviceName }}
                port:
                  number: 80

{{- end }}
{{- end }}
