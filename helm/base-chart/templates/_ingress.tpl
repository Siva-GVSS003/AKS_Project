{{- define "base.ingress" }}
{{- if .Values.ingress.enabled }}

apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: {{ .Values.name }}-ingress
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
                name: springboot-app
                port:
                  number: 80

          - path: /user
            pathType: Prefix
            backend:
              service:
                name: user-service
                port:
                  number: 80

          - path: /order
            pathType: Prefix
            backend:
              service:
                name: order-service
                port:
                  number: 80

          - path: /payment
            pathType: Prefix
            backend:
              service:
                name: payment-service
                port:
                  number: 80

{{- end }}
{{- end }}
