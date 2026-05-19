.class public final Lf7/n$b;
.super Lf7/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lf7/n$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/n$b;

    invoke-direct {v0}, Lf7/n$b;-><init>()V

    sput-object v0, Lf7/n$b;->b:Lf7/n$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "must be a member or an extension function"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf7/n;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public b(Li5/x;)Z
    .registers 2

    const-string p0, "functionDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a;->I()Li5/r0;

    move-result-object p0

    if-nez p0, :cond_14

    invoke-interface {p1}, Li5/a;->L()Li5/r0;

    move-result-object p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method
