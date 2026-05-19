.class public interface abstract Lcom/pantanal/server/content/recommendlist/ListObserver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bç\u0080\u0001\u0018\u00002\u00020\u0001J \u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&¨\u0006\t"
    }
    d2 = {
        "Lcom/pantanal/server/content/recommendlist/ListObserver;",
        "",
        "",
        "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
        "newList",
        "Lcom/oplus/utrace/sdk/UTraceContext;",
        "parentCtx",
        "Lh4/z;",
        "onListChanged",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract onListChanged(Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ")V"
        }
    .end annotation
.end method
