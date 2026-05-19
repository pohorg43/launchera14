.class public final Lu6/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lh6/b;

.field public final b:Lu6/g;


# direct methods
.method public constructor <init>(Lh6/b;Lu6/g;)V
    .registers 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/i$a;->a:Lh6/b;

    iput-object p2, p0, Lu6/i$a;->b:Lu6/g;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lu6/i$a;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lu6/i$a;->a:Lh6/b;

    check-cast p1, Lu6/i$a;

    iget-object p1, p1, Lu6/i$a;->a:Lh6/b;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lu6/i$a;->a:Lh6/b;

    invoke-virtual {p0}, Lh6/b;->hashCode()I

    move-result p0

    return p0
.end method
