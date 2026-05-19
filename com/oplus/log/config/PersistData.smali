.class public Lcom/oplus/log/config/PersistData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private maxLogSize:I

.field private queueSize:I

.field private timesPerDay:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLogSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/config/PersistData;->maxLogSize:I

    return p0
.end method

.method public getQueueSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/config/PersistData;->queueSize:I

    return p0
.end method

.method public getTimesPerDay()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/config/PersistData;->timesPerDay:I

    return p0
.end method

.method public setMaxLogSize(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/config/PersistData;->maxLogSize:I

    return-void
.end method

.method public setQueueSize(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/config/PersistData;->queueSize:I

    return-void
.end method

.method public setTimesPerDay(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/config/PersistData;->timesPerDay:I

    return-void
.end method
