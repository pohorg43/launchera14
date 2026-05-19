.class public Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;
.super Lcom/oplus/quickstep/events/EventBus$Event;
.source ""


# instance fields
.field private final cancelAnimationEvenIfWithoutController:Z

.field private final toHome:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;->toHome:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;->cancelAnimationEvenIfWithoutController:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;->toHome:Z

    iput-boolean p2, p0, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;->cancelAnimationEvenIfWithoutController:Z

    return-void
.end method


# virtual methods
.method public isCancelAnimationEvenIfWithoutController()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;->cancelAnimationEvenIfWithoutController:Z

    return p0
.end method

.method public isToHome()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;->toHome:Z

    return p0
.end method
