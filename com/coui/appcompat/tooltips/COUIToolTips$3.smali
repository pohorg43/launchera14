.class Lcom/coui/appcompat/tooltips/COUIToolTips$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$3;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$3;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$400(Lcom/coui/appcompat/tooltips/COUIToolTips;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$3;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$500(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$3;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$402(Lcom/coui/appcompat/tooltips/COUIToolTips;Z)Z

    :cond_13
    return-void
.end method
