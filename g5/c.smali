.class public final enum Lg5/c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg5/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lg5/c$a;

.field public static final enum d:Lg5/c;

.field public static final enum e:Lg5/c;

.field public static final enum f:Lg5/c;

.field public static final enum g:Lg5/c;

.field public static final synthetic h:[Lg5/c;


# instance fields
.field public final a:Lh6/c;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 22

    new-instance v7, Lg5/c;

    sget-object v3, Lf5/j;->k:Lh6/c;

    const-string v1, "Function"

    const/4 v2, 0x0

    const-string v4, "Function"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lg5/c;-><init>(Ljava/lang/String;ILh6/c;Ljava/lang/String;ZZ)V

    sput-object v7, Lg5/c;->d:Lg5/c;

    new-instance v0, Lg5/c;

    sget-object v11, Lf5/j;->e:Lh6/c;

    const-string v9, "SuspendFunction"

    const/4 v10, 0x1

    const-string v12, "SuspendFunction"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lg5/c;-><init>(Ljava/lang/String;ILh6/c;Ljava/lang/String;ZZ)V

    sput-object v0, Lg5/c;->e:Lg5/c;

    new-instance v1, Lg5/c;

    sget-object v11, Lf5/j;->h:Lh6/c;

    const-string v16, "KFunction"

    const/16 v17, 0x2

    const-string v19, "KFunction"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v15, v1

    move-object/from16 v18, v11

    invoke-direct/range {v15 .. v21}, Lg5/c;-><init>(Ljava/lang/String;ILh6/c;Ljava/lang/String;ZZ)V

    sput-object v1, Lg5/c;->f:Lg5/c;

    new-instance v2, Lg5/c;

    const-string v9, "KSuspendFunction"

    const/4 v10, 0x3

    const-string v12, "KSuspendFunction"

    const/4 v14, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lg5/c;-><init>(Ljava/lang/String;ILh6/c;Ljava/lang/String;ZZ)V

    sput-object v2, Lg5/c;->g:Lg5/c;

    const/4 v3, 0x4

    new-array v3, v3, [Lg5/c;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Lg5/c;->h:[Lg5/c;

    new-instance v0, Lg5/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg5/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lg5/c;->c:Lg5/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILh6/c;Ljava/lang/String;ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg5/c;->a:Lh6/c;

    iput-object p4, p0, Lg5/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg5/c;
    .registers 2

    const-class v0, Lg5/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg5/c;

    return-object p0
.end method

.method public static values()[Lg5/c;
    .registers 1

    sget-object v0, Lg5/c;->h:[Lg5/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg5/c;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lh6/f;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lg5/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    const-string p1, "identifier(\"$classNamePrefix$arity\")"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
