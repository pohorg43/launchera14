.class public final Le1/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/e$a;,
        Le1/e$b;,
        Le1/e$c;,
        Le1/e$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld1/n<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ld1/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/n<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final c:Ld1/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld1/n;Ld1/n;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ld1/n<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Ld1/n<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le1/e;->a:Landroid/content/Context;

    iput-object p2, p0, Le1/e;->b:Ld1/n;

    iput-object p3, p0, Le1/e;->c:Ld1/n;

    iput-object p4, p0, Le1/e;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;
    .registers 16
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    new-instance p1, Ld1/n$a;

    new-instance v9, Ls1/b;

    invoke-direct {v9, v4}, Ls1/b;-><init>(Ljava/lang/Object;)V

    new-instance v10, Le1/e$d;

    iget-object v1, p0, Le1/e;->a:Landroid/content/Context;

    iget-object v2, p0, Le1/e;->b:Ld1/n;

    iget-object v3, p0, Le1/e;->c:Ld1/n;

    iget-object v8, p0, Le1/e;->d:Ljava/lang/Class;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Le1/e$d;-><init>(Landroid/content/Context;Ld1/n;Ld1/n;Landroid/net/Uri;IILw0/e;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, Ld1/n$a;-><init>(Lw0/c;Lx0/d;)V

    return-object p1
.end method

.method public handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Ly0/b;->d(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method
