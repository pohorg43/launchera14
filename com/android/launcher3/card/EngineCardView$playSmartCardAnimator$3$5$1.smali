.class final Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$3$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/EngineCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$3$5$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$3$5$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMResetDrawPicFlagForCache()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
