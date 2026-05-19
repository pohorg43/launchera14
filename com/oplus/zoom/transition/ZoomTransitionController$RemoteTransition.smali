.class final Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/transition/ZoomTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RemoteTransition"
.end annotation


# instance fields
.field public final handlers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public seqId:I

.field public final synthetic this$0:Lcom/oplus/zoom/transition/ZoomTransitionController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/transition/ZoomTransitionController;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->handlers:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->seqId:I

    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/Integer;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->handlers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allDone()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->handlers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public getHandlers()Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->handlers:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public hasHandler(Ljava/lang/Integer;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->handlers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeHandler(Ljava/lang/Integer;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->handlers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
