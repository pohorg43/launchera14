.class public final Lk7/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/f$a;->a:Ljava/lang/String;

    iput p2, p0, Lk7/f$a;->b:I

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lk7/f;

    iget-object v1, p0, Lk7/f$a;->a:Ljava/lang/String;

    iget p0, p0, Lk7/f$a;->b:I

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v1, "compile(pattern, flags)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lk7/f;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method
