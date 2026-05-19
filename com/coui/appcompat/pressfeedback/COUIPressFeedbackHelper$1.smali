.class Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    iput p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->f:F

    return-void
.end method
