.class public final Ld5/g$e$a;
.super Ld5/g$e;
.source ""

# interfaces
.implements Ld5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/g$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ld5/g$e;-><init>(Ljava/lang/reflect/Field;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Ld5/g$e$a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ld5/f$a;->a(Ld5/f;[Ljava/lang/Object;)V

    iget-object p1, p0, Ld5/g;->a:Ljava/lang/reflect/Member;

    check-cast p1, Ljava/lang/reflect/Field;

    iget-object p0, p0, Ld5/g$e$a;->e:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
