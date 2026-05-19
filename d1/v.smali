.class public Ld1/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/v$a;,
        Ld1/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld1/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Ld1/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ld1/v;

    invoke-direct {v0}, Ld1/v;-><init>()V

    sput-object v0, Ld1/v;->a:Ld1/v;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lw0/e;",
            ")",
            "Ld1/n$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p0, Ld1/n$a;

    new-instance p2, Ls1/b;

    invoke-direct {p2, p1}, Ls1/b;-><init>(Ljava/lang/Object;)V

    new-instance p3, Ld1/v$b;

    invoke-direct {p3, p1}, Ld1/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Ld1/n$a;-><init>(Lw0/c;Lx0/d;)V

    return-object p0
.end method

.method public handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
