DATA=$(df / | tail -n1 | sed "s/  */ /g" | cut -d' ' -f 5 | cut -d'%' -f1)
if [ "$DATA"  -ge 40 ]; then
    echo $DATA
else
    echo ""
fi
