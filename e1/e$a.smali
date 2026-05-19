.class public abstract Le1/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld1/o<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/e$a;->a:Landroid/content/Context;

    iput-object p2, p0, Le1/e$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final build(Ld1/r;)Ld1/n;
    .registers 7
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
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    new-instance v0, Le1/e;

    iget-object v1, p0, Le1/e$a;->a:Landroid/content/Context;

    const-class v2, Ljava/io/File;

    iget-object v3, p0, Le1/e$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ld1/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Ld1/n;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    iget-object v4, p0, Le1/e$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v3, v4}, Ld1/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Ld1/n;

    move-result-object p1

    iget-object p0, p0, Le1/e$a;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1, p0}, Le1/e;-><init>(Landroid/content/Context;Ld1/n;Ld1/n;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final teardown()V
    .registers 1

    return-void
.end method
