.class public Lh5/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li7/b$c;


# static fields
.field public static final a:Lh5/k;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh5/k;

    invoke-direct {v0}, Lh5/k;-><init>()V

    sput-object v0, Lh5/k;->a:Lh5/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    check-cast p1, Li5/b;

    sget-object p0, Lh5/l;->h:[Lz4/n;

    invoke-interface {p1}, Li5/b;->a()Li5/b;

    move-result-object p0

    invoke-interface {p0}, Li5/b;->d()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
