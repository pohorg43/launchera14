.class public Ll1/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll1/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field public static final a:Ll1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ll1/g;

    invoke-direct {v0}, Ll1/g;-><init>()V

    sput-object v0, Ll1/g;->a:Ll1/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz0/w;Lw0/e;)Lz0/w;
    .registers 3
    .param p1  # Lz0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/w<",
            "TZ;>;",
            "Lw0/e;",
            ")",
            "Lz0/w<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
