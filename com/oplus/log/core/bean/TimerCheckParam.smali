.class public Lcom/oplus/log/core/bean/TimerCheckParam;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private delayRetrySecond:J

.field private enableDelayRetry:Z

.field private enableTimerCheck:Z

.field private timesPerDay:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->enableTimerCheck:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->timesPerDay:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->enableDelayRetry:Z

    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->delayRetrySecond:J

    return-void
.end method


# virtual methods
.method public getDelayRetrySecond()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->delayRetrySecond:J

    return-wide v0
.end method

.method public getTimesPerDay()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->timesPerDay:I

    return p0
.end method

.method public isEnableDelayRetry()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->enableDelayRetry:Z

    return p0
.end method

.method public isEnableTimerCheck()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->enableTimerCheck:Z

    return p0
.end method

.method public setDelayRetrySecond(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->delayRetrySecond:J

    return-void
.end method

.method public setEnableDelayRetry(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->enableDelayRetry:Z

    return-void
.end method

.method public setEnableTimerCheck(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->enableTimerCheck:Z

    return-void
.end method

.method public setTimesPerDay(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/core/bean/TimerCheckParam;->timesPerDay:I

    return-void
.end method
