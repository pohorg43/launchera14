.class Lcom/coui/appcompat/tooltips/COUIToolTips$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;->init(I)V
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

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$4;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$4;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$4;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$600(Lcom/coui/appcompat/tooltips/COUIToolTips;)Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$4;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$600(Lcom/coui/appcompat/tooltips/COUIToolTips;)Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;->d()V

    :cond_16
    return-void
.end method
