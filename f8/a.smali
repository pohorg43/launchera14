.class public abstract Lf8/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lf8/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Le8/q$a;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Le8/h;Le8/a;Lh8/g;)Ljava/net/Socket;
.end method

.method public abstract c(Le8/h;Le8/a;Lh8/g;Le8/c0;)Lh8/c;
.end method

.method public abstract d(Le8/d;Ljava/io/IOException;)Ljava/io/IOException;
    .param p2  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
