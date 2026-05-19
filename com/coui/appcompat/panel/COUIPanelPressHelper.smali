.class public Lcom/coui/appcompat/panel/COUIPanelPressHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Landroid/view/animation/PathInterpolator;


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Landroid/animation/ValueAnimator;

.field public c:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->d:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->a:Ljava/lang/Float;

    return-void
.end method
