.class public final Lk5/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk5/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lk5/c$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk5/c$b;

    invoke-direct {v0}, Lk5/c$b;-><init>()V

    sput-object v0, Lk5/c$b;->a:Lk5/c$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Li5/e;Li5/u0;)Z
    .registers 3

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "functionDescriptor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object p0

    sget-object p1, Lk5/d;->a:Lh6/c;

    invoke-interface {p0, p1}, Lj5/h;->g(Lh6/c;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
