.class public final Lio/branch/search/w$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/w$a;->a(Ljava/lang/String;)Lio/branch/search/KBranchRemoteConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "La8/c;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/w$a$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/w$a$a;

    invoke-direct {v0}, Lio/branch/search/w$a$a;-><init>()V

    sput-object v0, Lio/branch/search/w$a$a;->a:Lio/branch/search/w$a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(La8/c;)V
    .registers 2

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, La8/c;->b:Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, La8/c;

    invoke-virtual {p0, p1}, Lio/branch/search/w$a$a;->a(La8/c;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
