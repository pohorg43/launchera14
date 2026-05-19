.class public Lcom/oplus/log/core/LoganModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/core/LoganModel$Action;,
        Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;
    }
.end annotation


# instance fields
.field public action:Lcom/oplus/log/core/LoganModel$Action;

.field public listener:Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;

.field public sendAction:Lcom/oplus/log/core/SendAction;

.field public writeAction:Lcom/oplus/log/core/WriteAction;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/core/LoganModel;->action:Lcom/oplus/log/core/LoganModel$Action;

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    sget-object v2, Lcom/oplus/log/core/LoganModel$Action;->SEND:Lcom/oplus/log/core/LoganModel$Action;

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/oplus/log/core/LoganModel;->sendAction:Lcom/oplus/log/core/SendAction;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/oplus/log/core/SendAction;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2d

    :cond_14
    iget-object v0, p0, Lcom/oplus/log/core/LoganModel;->action:Lcom/oplus/log/core/LoganModel$Action;

    sget-object v2, Lcom/oplus/log/core/LoganModel$Action;->WRITE:Lcom/oplus/log/core/LoganModel$Action;

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/oplus/log/core/LoganModel;->writeAction:Lcom/oplus/log/core/WriteAction;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/oplus/log/core/WriteAction;->isValid()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2d

    :cond_25
    iget-object p0, p0, Lcom/oplus/log/core/LoganModel;->action:Lcom/oplus/log/core/LoganModel$Action;

    sget-object v0, Lcom/oplus/log/core/LoganModel$Action;->FLUSH:Lcom/oplus/log/core/LoganModel$Action;

    if-ne p0, v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method
