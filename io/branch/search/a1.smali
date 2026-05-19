.class public Lio/branch/search/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/n<",
        "Lio/branch/search/z0;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ld1/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/o<",
            "Lio/branch/search/z0;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/a1$a;

    invoke-direct {v0}, Lio/branch/search/a1$a;-><init>()V

    sput-object v0, Lio/branch/search/a1;->a:Ld1/o;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/z0;IILw0/e;)Ld1/n$a;
    .registers 5
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/z0;",
            "II",
            "Lw0/e;",
            ")",
            "Ld1/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Ld1/n$a;

    invoke-virtual {p1}, Lio/branch/search/z0;->b()Lw0/c;

    move-result-object p2

    invoke-virtual {p1}, Lio/branch/search/z0;->a()Lx0/d;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ld1/n$a;-><init>(Lw0/c;Lx0/d;)V

    return-object p0
.end method

.method public a(Lio/branch/search/z0;)Z
    .registers 2
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lio/branch/search/z0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/a1;->a(Lio/branch/search/z0;IILw0/e;)Ld1/n$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lio/branch/search/z0;

    invoke-virtual {p0, p1}, Lio/branch/search/a1;->a(Lio/branch/search/z0;)Z

    move-result p0

    return p0
.end method
