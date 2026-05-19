.class public Ld1/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;
.implements Ld1/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/o<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Ld1/a$a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/a$b;->a:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lx0/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lx0/d<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p0, Lx0/h;

    invoke-direct {p0, p1, p2}, Lx0/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object p0
.end method

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
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p1, Ld1/a;

    iget-object v0, p0, Ld1/a$b;->a:Landroid/content/res/AssetManager;

    invoke-direct {p1, v0, p0}, Ld1/a;-><init>(Landroid/content/res/AssetManager;Ld1/a$a;)V

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
