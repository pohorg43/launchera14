.class public Le1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/n<",
        "Ld1/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lw0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ld1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/m<",
            "Ld1/g;",
            "Ld1/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lw0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lw0/d;

    move-result-object v0

    sput-object v0, Le1/a;->b:Lw0/d;

    return-void
.end method

.method public constructor <init>(Ld1/m;)V
    .registers 2
    .param p1  # Ld1/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/m<",
            "Ld1/g;",
            "Ld1/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/a;->a:Ld1/m;

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ld1/g;

    iget-object p2, p0, Le1/a;->a:Ld1/m;

    if-eqz p2, :cond_28

    const/4 p3, 0x0

    invoke-static {p1, p3, p3}, Ld1/m$b;->a(Ljava/lang/Object;II)Ld1/m$b;

    move-result-object v0

    iget-object p2, p2, Ld1/m;->a:Lt1/c;

    invoke-virtual {p2, v0}, Lt1/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0}, Ld1/m$b;->b()V

    check-cast p2, Ld1/g;

    if-nez p2, :cond_27

    iget-object p0, p0, Le1/a;->a:Ld1/m;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p3, p3}, Ld1/m$b;->a(Ljava/lang/Object;II)Ld1/m$b;

    move-result-object p2

    iget-object p0, p0, Ld1/m;->a:Lt1/c;

    invoke-virtual {p0, p2, p1}, Lt1/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_27
    move-object p1, p2

    :cond_28
    :goto_28
    sget-object p0, Le1/a;->b:Lw0/d;

    invoke-virtual {p4, p0}, Lw0/e;->a(Lw0/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p2, Ld1/n$a;

    new-instance p3, Lx0/j;

    invoke-direct {p3, p1, p0}, Lx0/j;-><init>(Ld1/g;I)V

    invoke-direct {p2, p1, p3}, Ld1/n$a;-><init>(Lw0/c;Lx0/d;)V

    return-object p2
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ld1/g;

    const/4 p0, 0x1

    return p0
.end method
