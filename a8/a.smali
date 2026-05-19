.class public abstract La8/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La8/a$a;
    }
.end annotation


# static fields
.field public static final b:La8/a$a;


# instance fields
.field public final a:Lb8/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, La8/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La8/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, La8/a;->b:La8/a$a;

    return-void
.end method

.method public constructor <init>(Lb8/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/a;->a:Lb8/c;

    return-void
.end method


# virtual methods
.method public final a(Lw7/h;Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/h<",
            "-TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lb8/o;

    sget-object v2, Lb8/q;->e:Lb8/q;

    invoke-static {}, Lb8/q;->values()[Lb8/q;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [La8/m;

    const-string v4, "output"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "json"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mode"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "modeReuseCache"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lb8/o$a;

    invoke-direct {v4, v0, p0}, Lb8/o$a;-><init>(Ljava/lang/StringBuilder;La8/a;)V

    invoke-direct {v1, v4, p0, v2, v3}, Lb8/o;-><init>(Lb8/o$a;La8/a;Lb8/q;[La8/m;)V

    invoke-virtual {v1, p1, p2}, Lb8/o;->v(Lw7/h;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "result.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
