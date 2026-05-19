.class public final Lio/branch/search/h0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/h0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/h0$e;)Z
    .registers 2

    const-string p0, "crash"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
