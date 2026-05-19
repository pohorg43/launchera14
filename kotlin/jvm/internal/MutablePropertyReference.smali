.class public abstract Lkotlin/jvm/internal/MutablePropertyReference;
.super Lkotlin/jvm/internal/PropertyReference;
.source ""

# interfaces
.implements Lz4/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract synthetic getGetter()Lz4/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz4/n$b<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract synthetic getSetter()Lz4/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz4/i$a<",
            "TV;>;"
        }
    .end annotation
.end method
