.class public Ld1/s$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/o<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/s$d;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public build(Ld1/r;)Ld1/n;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/r;",
            ")",
            "Ld1/n<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance p1, Ld1/s;

    iget-object p0, p0, Ld1/s$d;->a:Landroid/content/res/Resources;

    sget-object v0, Ld1/v;->a:Ld1/v;

    invoke-direct {p1, p0, v0}, Ld1/s;-><init>(Landroid/content/res/Resources;Ld1/n;)V

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
