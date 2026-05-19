.class public final Lpantanal/app/instant/engine/InstantAppCardClient$InitState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/instant/engine/InstantAppCardClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/instant/engine/InstantAppCardClient$InitState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/instant/engine/InstantAppCardClient$InitState$Companion;

.field public static final FAILURE:I = 0x3

.field public static final INITIALIZED:I = 0x2

.field public static final INITIALIZING:I = 0x1

.field public static final UNINITIALIZED:I


# instance fields
.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->Companion:Lpantanal/app/instant/engine/InstantAppCardClient$InitState$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final isInitFailed()Z
    .registers 2

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final isInitialized()Z
    .registers 2

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final isInitializing()Z
    .registers 2

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final isUnInitialized()Z
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final setState(I)V
    .registers 2

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitState={state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
