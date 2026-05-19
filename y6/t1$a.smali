.class public final Ly6/t1$a;
.super Ly6/t1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly6/t1;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ly6/l0;)Ly6/q1;
    .registers 2

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "Empty TypeSubstitution"

    return-object p0
.end method
