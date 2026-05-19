.class Lcom/coui/appcompat/tips/def/COUIDefaultTopTips$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/tips/def/OnLinesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->d()Lcom/coui/appcompat/tips/def/IDefaultTopTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips$1;->a:Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips$1;->a:Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/COUICardView;->setRadius(F)V

    return-void
.end method
