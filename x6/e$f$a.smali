.class public final Lx6/e$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx6/e$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/e$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method
