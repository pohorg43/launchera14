.class public final La6/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr5/x;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh6/b;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/b;",
            ")",
            "Ljava/util/List<",
            "Ly5/a;",
            ">;"
        }
    .end annotation

    const-string p0, "classId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
