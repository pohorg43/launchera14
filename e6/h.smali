.class public final Le6/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6/h$a;
    }
.end annotation


# static fields
.field public static final b:Le6/h$a;

.field public static final c:Le6/h;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Le6/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le6/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Le6/h;->b:Le6/h$a;

    new-instance v0, Le6/h;

    sget-object v1, Li4/y;->a:Li4/y;

    invoke-direct {v0, v1}, Le6/h;-><init>(Ljava/util/List;)V

    sput-object v0, Le6/h;->c:Le6/h;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc6/v;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/h;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/h;->a:Ljava/util/List;

    return-void
.end method
