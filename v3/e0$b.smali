.class public final Lv3/e0$b;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public d:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lv3/r;-><init>()V

    iput-object p1, p0, Lv3/e0$b;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lv3/e0$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lv3/e0$b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/w;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lv3/e0$b;->d:Lv3/r;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JsonAdapter isn\'t ready"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b0;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lv3/e0$b;->d:Lv3/r;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1, p2}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JsonAdapter isn\'t ready"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lv3/e0$b;->d:Lv3/r;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0
.end method
