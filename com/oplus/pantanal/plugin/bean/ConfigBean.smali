.class public Lcom/oplus/pantanal/plugin/bean/ConfigBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .registers 1

    iget p0, p0, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->version:I

    return p0
.end method

.method public final setVersion(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->version:I

    return-void
.end method
