.class public final La6/r$a$b;
.super La6/r$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:La6/t;


# direct methods
.method public constructor <init>(La6/t;[BI)V
    .registers 4

    const-string p2, "kotlinJvmBinaryClass"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, La6/r$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, La6/r$a$b;->a:La6/t;

    return-void
.end method
