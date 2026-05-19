.class public final Lpantanal/content/gadget/GadgetConfigCenter$registerConfigProperties$widgetConfigPropertiesObserver$1;
.super Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/content/gadget/GadgetConfigCenter;->registerConfigProperties(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>([I)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;-><init>([I)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "GadgetConfigCenter"

    const-string v2, "onPropertiesChanged, config properties changed, queryAndNotify"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/content/gadget/GadgetConfigCenter;->INSTANCE:Lpantanal/content/gadget/GadgetConfigCenter;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2, v0}, Lpantanal/content/base/IServiceListCenter;->queryAndNotify$default(Lpantanal/content/base/IServiceListCenter;Ljava/lang/Integer;IILjava/lang/Object;)V

    return-void
.end method
