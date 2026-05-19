.class public Ld1/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld1/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Ld1/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/v$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ld1/v$a;

    invoke-direct {v0}, Ld1/v$a;-><init>()V

    sput-object v0, Ld1/v$a;->a:Ld1/v$a;

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
.method public build(Ld1/r;)Ld1/n;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/r;",
            ")",
            "Ld1/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    sget-object p0, Ld1/v;->a:Ld1/v;

    return-object p0
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
