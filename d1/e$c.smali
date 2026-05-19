.class public final Ld1/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld1/o<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ld1/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/e$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/e$c$a;

    invoke-direct {v0, p0}, Ld1/e$c$a;-><init>(Ld1/e$c;)V

    iput-object v0, p0, Ld1/e$c;->a:Ld1/e$a;

    return-void
.end method


# virtual methods
.method public build(Ld1/r;)Ld1/n;
    .registers 2
    .param p1  # Ld1/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/r;",
            ")",
            "Ld1/n<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Ld1/e;

    iget-object p0, p0, Ld1/e$c;->a:Ld1/e$a;

    invoke-direct {p1, p0}, Ld1/e;-><init>(Ld1/e$a;)V

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
