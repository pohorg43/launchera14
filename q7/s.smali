.class public final Lq7/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp7/e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lq7/s;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq7/s;

    invoke-direct {v0}, Lq7/s;-><init>()V

    sput-object v0, Lq7/s;->a:Lq7/s;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
