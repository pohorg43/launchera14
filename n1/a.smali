.class public abstract Ln1/a;
.super Ln1/d;
.source ""

# interfaces
.implements Ln1/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ln1/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/c;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
