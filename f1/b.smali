.class public final Lf1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw0/g<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Lw0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf1/b;

    invoke-direct {v0}, Lf1/b;-><init>()V

    sput-object v0, Lf1/b;->b:Lw0/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Landroid/content/Context;Lz0/w;II)Lz0/w;
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lz0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz0/w<",
            "TT;>;II)",
            "Lz0/w<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1  # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
