CURRENT=current
CWD=$(shell pwd)
TARGET=$(shell node -e 'items = ["hello", "world"];console.log(items[Math.floor(Math.random()*items.length)])')
run:
	@rm -rf $(CURRENT)
	ln -s $(TARGET) $(CURRENT)
	for i in `seq 10`; do NODE_PATH=$(CWD)/$(CURRENT) node $(CWD)/$(CURRENT); done
