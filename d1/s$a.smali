.class public final Ld1/s$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/o<",
        "Ljava/lang/Integer;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/s$a;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public build(Ld1/r;)Ld1/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/r;",
            ")",
            "Ld1/n<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ld1/s;

    iget-object p0, p0, Ld1/s$a;->a:Landroid/content/res/Resources;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Ld1/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Ld1/n;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ld1/s;-><init>(Landroid/content/res/Resources;Ld1/n;)V

    return-object v0
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
