.class public final Lcom/oplus/quickstep/utils/ChoreographerUtil$postFrameCallbackDelay$frameCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $callback:Ljava/lang/Runnable;

.field public final synthetic $num:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/utils/ChoreographerUtil$postFrameCallbackDelay$frameCallback$1;->$num:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/oplus/quickstep/utils/ChoreographerUtil$postFrameCallbackDelay$frameCallback$1;->$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 5

    const-string p1, "postFrameCallbackDelay: num = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/quickstep/utils/ChoreographerUtil$postFrameCallbackDelay$frameCallback$1;->$num:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const-string v0, "Common"

    const-string v1, "ChoreographerUtil"

    invoke-static {p1, p2, v0, v1}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/ChoreographerUtil$postFrameCallbackDelay$frameCallback$1;->$num:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gtz p2, :cond_21

    iget-object p0, p0, Lcom/oplus/quickstep/utils/ChoreographerUtil$postFrameCallbackDelay$frameCallback$1;->$callback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_28

    :cond_21
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :goto_28
    return-void
.end method
