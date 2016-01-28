FROM mongo:3.2

MAINTAINER Nicolas Zozol - nz@robusta.io - http://www.robusta.io - hk project


#ENTRYPOINT ["/entrypoint.sh"] # There is still this valid entrypoint
#EXPOSE 27017

# those arguments will be added to the entrypoint
CMD ["mongod", "-f", "/opt/conf/mongod.conf"]