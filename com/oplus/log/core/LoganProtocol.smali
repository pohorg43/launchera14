.class Lcom/oplus/log/core/LoganProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/core/LoganProtocolHandler;


# instance fields
.field private mCurProtocol:Lcom/oplus/log/core/LoganProtocolHandler;

.field private mIsInit:Z

.field private mLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logan_debug(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/core/LoganProtocol;->mCurProtocol:Lcom/oplus/log/core/LoganProtocolHandler;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/oplus/log/core/LoganProtocolHandler;->logan_debug(Z)V

    :cond_7
    return-void
.end method

.method public logan_flush()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/LoganProtocol;->mCurProtocol:Lcom/oplus/log/core/LoganProtocolHandler;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/log/core/LoganProtocolHandler;->logan_flush()V

    :cond_7
    return-void
.end method

.method public logan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    iget-boolean v0, p0, Lcom/oplus/log/core/LoganProtocol;->mIsInit:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/oplus/log/core/CLoganProtocol;->isCloganSuccess()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/oplus/log/core/CLoganProtocol;

    invoke-direct {v0}, Lcom/oplus/log/core/CLoganProtocol;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/core/LoganProtocol;->mCurProtocol:Lcom/oplus/log/core/LoganProtocolHandler;

    iget-object v1, p0, Lcom/oplus/log/core/LoganProtocol;->mLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;

    invoke-interface {v0, v1}, Lcom/oplus/log/core/LoganProtocolHandler;->setOnLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V

    iget-object v2, p0, Lcom/oplus/log/core/LoganProtocol;->mCurProtocol:Lcom/oplus/log/core/LoganProtocolHandler;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/oplus/log/core/LoganProtocolHandler;->logan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/log/core/LoganProtocol;->mIsInit:Z

    goto :goto_28

    :cond_25
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/log/core/LoganProtocol;->mCurProtocol:Lcom/oplus/log/core/LoganProtocolHandler;

    :goto_28
    return-void
.end method

.method public logan_open(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/core/LoganProtocol;->mCurProtocol:Lcom/oplus/log/core/LoganProtocolHandler;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/oplus/log/core/LoganProtocolHandler;->logan_open(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public logan_write(ILjava/lang/String;JLjava/lang/String;J)V
    .registers 16

    iget-object v0, p0, Lcom/oplus/log/core/LoganProtocol;->mCurProtocol:Lcom/oplus/log/core/LoganProtocolHandler;

    if-eqz v0, :cond_c

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/oplus/log/core/LoganProtocolHandler;->logan_write(ILjava/lang/String;JLjava/lang/String;J)V

    :cond_c
    return-void
.end method

.method public setOnLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganProtocol;->mLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;

    return-void
.end method
