.class public Lcom/oplus/log/collect/LoggingEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayout:Lcom/oplus/log/appender/Layout/Layout;

.field private mMessage:Ljava/lang/Object;

.field private mPriority:B

.field private mShowConsole:Ljava/lang/Boolean;

.field private mTag:Ljava/lang/String;

.field private mThreadName:Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/log/appender/Layout/Layout;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/log/collect/LoggingEvent;->mShowConsole:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/oplus/log/collect/LoggingEvent;->mMessage:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mTag:Ljava/lang/String;

    iput-byte p3, p0, Lcom/oplus/log/collect/LoggingEvent;->mPriority:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mTimeStamp:J

    iput-object p4, p0, Lcom/oplus/log/collect/LoggingEvent;->mThreadName:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/log/collect/LoggingEvent;->mExtras:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/oplus/log/collect/LoggingEvent;->mLayout:Lcom/oplus/log/appender/Layout/Layout;

    return-void
.end method


# virtual methods
.method public getExtras()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/log/collect/LoggingEvent;->mExtras:Ljava/util/HashMap;

    return-object p0
.end method

.method public getLayout()Lcom/oplus/log/appender/Layout/Layout;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/collect/LoggingEvent;->mLayout:Lcom/oplus/log/appender/Layout/Layout;

    return-object p0
.end method

.method public getMessage()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/collect/LoggingEvent;->mMessage:Ljava/lang/Object;

    return-object p0
.end method

.method public getPriority()B
    .registers 1

    iget-byte p0, p0, Lcom/oplus/log/collect/LoggingEvent;->mPriority:B

    return p0
.end method

.method public getShowConsole()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/collect/LoggingEvent;->mShowConsole:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/collect/LoggingEvent;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/collect/LoggingEvent;->mThreadName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/log/collect/LoggingEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public setExtras(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mExtras:Ljava/util/HashMap;

    return-void
.end method

.method public setLayout(Lcom/oplus/log/appender/Layout/Layout;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mLayout:Lcom/oplus/log/appender/Layout/Layout;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mMessage:Ljava/lang/Object;

    return-void
.end method

.method public setPriority(B)V
    .registers 2

    iput-byte p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mPriority:B

    return-void
.end method

.method public setShowConsole(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mShowConsole:Ljava/lang/Boolean;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mThreadName:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/collect/LoggingEvent;->mTimeStamp:J

    return-void
.end method
