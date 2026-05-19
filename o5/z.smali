.class public final Lo5/z;
.super Lo5/f;
.source ""

# interfaces
.implements Ly5/o;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh6/f;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo5/f;-><init>(Lh6/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lo5/z;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lo5/z;->b:Ljava/lang/Object;

    return-object p0
.end method
