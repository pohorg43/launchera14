.class public Lm1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm1/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm1/i;)V
    .registers 2
    .param p1  # Lm1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lm1/i;->onStart()V

    return-void
.end method

.method public b(Lm1/i;)V
    .registers 2
    .param p1  # Lm1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
